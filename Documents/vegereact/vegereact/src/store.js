import { configureStore, createSlice } from '@reduxjs/toolkit'

let resto = createSlice({
    name : 'resto',
    initialState : 'resto'
})

export default configureStore({
  reducer: { 
    resto : resto.reducer
  }
}) 